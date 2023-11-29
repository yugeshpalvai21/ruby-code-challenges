class Calculator
    def add(a,b)
        a.to_i + b.to_i
    end
end
describe Calculator do
    describe "#add" do
        context "when two integers passed as arguments" do
            it "adds two integers" do
                expect(subject.add(1,2)).to eq 3
            end
        end
        context "when strings passed as arguments" do
            it "gives 0 result" do
                expect(subject.add('asas', 'ssss')).to eq 0
            end
        end
    end
end