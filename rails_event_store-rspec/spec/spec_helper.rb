require "aggregate_root"
require "rails_event_store"
require "rails_event_store/rspec"
require "support/rspec_defaults"


FooEvent = Class.new(RailsEventStore::Event)
BarEvent = Class.new(RailsEventStore::Event)
BazEvent = Class.new(RailsEventStore::Event)

class TestAggregate
  include AggregateRoot

  def foo
    apply(FooEvent.new)
  end

  def bar
    apply(BarEvent.new)
  end

  private

  def apply_foo_event(*)
  end

  def apply_bar_event(*)
  end
end
