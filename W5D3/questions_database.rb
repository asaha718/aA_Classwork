require "sqlite3"
require "singleton"

class QuestionsDatabase < SQLite3::Database
    include Singleton
    def initialize
        super('questions.db')
        self.type_translation = true
        self.results_as_hash = true
    end
end

class Question
    
    def self.find_by_id(id)
        question = QuestionsDatabase.instance.execute(<<-SQL, id)
            SELECT
                *
            FROM
                questions
            WHERE
                id = ?
        SQL
    end

    def initialize(options)
        @id = options['id']
        @title = options['title']
        @body = options['body']
        @associated_author = options['associated_author']
    end

end

class User

    def self.find_by_id
    end

    def initialize(options)
        @id = options['id']
        @fname = options['fname']
        @lname = options['lname']
    end

end

class QuestionFollow

    def self.find_by_id
    end

    def initialize(options)
        @id = options['id']
        @question_id = options['question_id']
        @user_id = options['user_id']
    end

end

class Reply

    def self.find_by_id
    end

    def initialize(options)
        @id = options['id']
        @question_id = options['question_id']
        @replies_id = options['replies_id']
        @user_id = options['user_id']
        @body = options['body']
    end

end

class QuestionLike

    def self.find_by_id
    end

    def initialize(options)
        @id = options['id']
        @question_id = options['question_id']
        @user_id = options['user_id']
    end

end