define_stage :demo do
  requires :map_generator, :map_data

  curtain_up do
    create_actor :fps, x: 20, y: 40
    map_data.configure 100, 100, 96
    map_generator.populate map_data
    @map = create_actor :map, map_data: map_data

    setup_keyboard_view_movement
  end

  helpers do
    def setup_keyboard_view_movement
      amount = 30
      input_manager.reg :down, KbLeft do
        viewport.scroll(amount,0)
      end
      input_manager.reg :down, KbRight do
        viewport.scroll(-amount,0)
      end
      input_manager.reg :down, KbUp do
        viewport.scroll(0,amount)
      end
      input_manager.reg :down, KbDown do
        viewport.scroll(0,-amount)
      end
    end
  end
end
