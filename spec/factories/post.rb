FactoryBot.define do
  factory :post do
    title {"sample"}
    name {"sample"}
    overview {"samplesamplesample"}
    label1 {"a"}
    label2 {"b"}
    label3 {"c"}
    label4 {"d"}
    label5 {"e"}
    value1 {"0"}
    value2 {"1"}
    value3 {"2"}
    value4 {"5"}
    value5 {"6"}
    bgcolor {"blue"}
    tag_list {["a","b","c","d","e"]}
  end
end