package com.li.domain;

/**
 * ScoreProportion entity. @author MyEclipse Persistence Tools
 */

public class ScoreProportion implements java.io.Serializable {

	// Fields

	private ScoreProportionId id;

	// Constructors

	/** default constructor */
	public ScoreProportion() {
	}

	/** full constructor */
	public ScoreProportion(ScoreProportionId id) {
		this.id = id;
	}

	// Property accessors

	public ScoreProportionId getId() {
		return this.id;
	}

	public void setId(ScoreProportionId id) {
		this.id = id;
	}

}