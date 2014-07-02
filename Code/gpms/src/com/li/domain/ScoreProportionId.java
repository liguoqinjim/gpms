package com.li.domain;

/**
 * ScoreProportionId entity. @author MyEclipse Persistence Tools
 */

public class ScoreProportionId implements java.io.Serializable {

	// Fields

	private Integer scoreProportionSelf;
	private Integer scoreProportionMutual;
	private Integer scoreProportionReply;

	// Constructors

	/** default constructor */
	public ScoreProportionId() {
	}

	/** full constructor */
	public ScoreProportionId(Integer scoreProportionSelf,
			Integer scoreProportionMutual,
			Integer scoreProportionReply) {
		this.scoreProportionSelf = scoreProportionSelf;
		this.scoreProportionMutual = scoreProportionMutual;
		this.scoreProportionReply = scoreProportionReply;
	}

	// Property accessors

	public Integer getScoreProportionSelf() {
		return this.scoreProportionSelf;
	}

	public void setScoreProportionSelf(Integer scoreProportionSelf) {
		this.scoreProportionSelf = scoreProportionSelf;
	}

	public Integer getScoreProportionMutual() {
		return this.scoreProportionMutual;
	}

	public void setScoreProportionMutual(Integer scoreProportionMutual) {
		this.scoreProportionMutual = scoreProportionMutual;
	}

	public Integer getScoreProportionReply() {
		return this.scoreProportionReply;
	}

	public void setScoreProportionReply(Integer scoreProportionReply) {
		this.scoreProportionReply = scoreProportionReply;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ScoreProportionId))
			return false;
		ScoreProportionId castOther = (ScoreProportionId) other;

		return ((this.getScoreProportionSelf() == castOther
				.getScoreProportionSelf()) || (this
				.getScoreProportionSelf() != null
				&& castOther.getScoreProportionSelf() != null && this
				.getScoreProportionSelf()
				.equals(castOther.getScoreProportionSelf())))
				&& ((this.getScoreProportionMutual() == castOther
						.getScoreProportionMutual()) || (this
						.getScoreProportionMutual() != null
						&& castOther.getScoreProportionMutual() != null && this
						.getScoreProportionMutual()
						.equals(castOther
								.getScoreProportionMutual())))
				&& ((this.getScoreProportionReply() == castOther
						.getScoreProportionReply()) || (this
						.getScoreProportionReply() != null
						&& castOther.getScoreProportionReply() != null && this
						.getScoreProportionReply()
						.equals(castOther
								.getScoreProportionReply())));
	}

	public int hashCode() {
		int result = 17;

		result = 37
				* result
				+ (getScoreProportionSelf() == null ? 0 : this
						.getScoreProportionSelf()
						.hashCode());
		result = 37
				* result
				+ (getScoreProportionMutual() == null ? 0
						: this.getScoreProportionMutual()
								.hashCode());
		result = 37
				* result
				+ (getScoreProportionReply() == null ? 0 : this
						.getScoreProportionReply()
						.hashCode());
		return result;
	}

}