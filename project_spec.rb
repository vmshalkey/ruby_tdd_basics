require_relative 'project'

RSpec.describe Project do
  it "has a getter and setter for name attribute" do
    project = Project.new("Project Name", "I am a project")
    project.name = "Changed Name"
    expect(project.name).to eq("Changed Name")
  end

  it "has a getter and setter for description attribute" do
    project = Project.new("Project Name", "I am a project")
    project.description = "Changed Description"
    expect(project.description).to eq("Changed Description")
  end

  it "has an have initializer with arguments name and description" do
    project = Project.new("Project Name", "I am a project")
    expect(project.name).to eq("Project Name")
    expect(project.description).to eq("I am a project")
  end

  it "has a method elevator_pitch to explain name and description" do
    project1 = Project.new("Project Name 1", "I am a project")
    project2 = Project.new("Project Name 2", "I am a project too")
    expect(project1.elevator_pitch).to eq("Project Name 1: I am a project")
    expect(project2.elevator_pitch).to eq("Project Name 2: I am a project too")
  end
end