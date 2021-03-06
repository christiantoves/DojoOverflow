package com.chris.dojooverflow.services;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.chris.dojooverflow.models.Answer;
import com.chris.dojooverflow.repositories.AnswerRepository;

@Service
public class AnswerService {
	private final AnswerRepository answerRepository;

	public AnswerService(AnswerRepository answerRepository) {
		this.answerRepository = answerRepository;
	}

	public Answer createOne(Answer answer) {
		return answerRepository.save(answer);
	}

	public Answer getOne(Long id) {
		Optional<Answer> optionalAnswer = answerRepository.findById(id);
		if (optionalAnswer.isPresent()) {
			return optionalAnswer.get();
		} else {
			return null;
		}
	}
}
