module QuestionModules
  module Fetcher

    def find_questions(round_name)
      jeopardy = Round.find_by(:name => round_name)
      qs = questions.where(:round_id => jeopardy.id)
      qs.each_with_object({}) do |q,h|
        k = q.category.name; h[k] ? h[k] << q : h[k] = [q]
      end
    end

    def jeopardy
      find_questions("Jeopardy!")
    end

    def double
      find_questions("Double Jeopardy!")
    end

    def final
      find_questions("Final Jeopardy!")
    end

  end
end
