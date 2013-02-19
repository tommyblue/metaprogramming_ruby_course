require 'java'
require 'swt'

STDOUT.sync = true

module Swt
  include_package 'org.eclipse.swt'
  include_package 'org.eclipse.swt.layout'
  include_package 'org.eclipse.swt.widgets'
  include_package 'org.eclipse.swt.graphics'
  include_package 'org.eclipse.swt.events'
  include_package 'org.eclipse.swt.dnd'
  import java.awt.datatransfer.StringSelection
  import java.awt.Toolkit
end

module BSH
  def self.make_window
    @display = Swt::Display.new
    @shell = Swt::Shell.new display, Swt::SWT::SHELL_TRIM
    @shell.setSize 600, 500
    @shell.setText 'Baby Shoes'
    @cs = Swt::Composite.new @shell, Swt::SWT::NULL
    @cs.setSize 600, 500
  end

  def self.open_window
    @shell.open
    while !@shell.isDisposed do
      @display.sleep unless @display.readAndDispatch
    end
    @display.dispose
    exit
  end

  def self.make_oval left=0, top=0, width=100, height=100
    pl = Swt::PaintListener.new
    class << pl; self end.
    instance_eval do
      define_method :paintControl do |e|
        gc = e.gc
        gc.setAntialias Swt::SWT::ON
        gc.setBackground Swt::Color.new(@display, 0, 0, 0)
        gc.fillOval left, top, width, height
      end
    end
    @cs.addPaintListener pl
  end

  def self.make_rect left=0, top=0, width=100, height=100
    pl = Swt::PaintListener.new
    class << pl; self end.
    instance_eval do
      define_method :paintControl do |e|
        gc = e.gc
        gc.setAntialias Swt::SWT::ON
        gc.setBackground Swt::Color.new(@display, 0, 0, 0)
        gc.fillRectangle left, top, width, height
      end
    end
    @cs.addPaintListener pl
  end
end
