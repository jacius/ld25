define_behavior :harvestable do
  setup do
    actor.has_attributes resources: 3

    reacts_with :harvest
  end

  helpers do
    include MinMaxHelpers
    def harvest
      actor.resources = max(0, actor.resources - 1)
    end
  end
end
