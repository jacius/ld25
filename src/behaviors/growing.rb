define_behavior :growing do
  requires :timer_mananager

  setup do
    actor.has_attributes ms_to_grow: 2_000,
                         resources: 3,
                         max_resources: 3

    timer_mananager.add_timer timer_name do
      actor.resources = min(actor.resources+1, actor.max_resources)
      puts "actor.resources: #{actor.resources}"
    end
  end

  helpers do
    include MinMaxHelpers
    def timer_name
      "growing:#{object_id}"
    end
  end
end
