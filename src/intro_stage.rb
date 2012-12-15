define_stage :intro do
  curtain_up do
    create_actor :label, x: 200, y: 200, text: "MOAR AXE", font_name: 'docseuss.ttf', font_size: 140, color: Color::YELLOW
    input_manager.reg :down do 
      fire :next_stage
    end
  end

end
