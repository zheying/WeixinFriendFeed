package com.zeeying.pojiedemo.view;

/**
 * Created by zeeying on 16/11/15.
 */

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import com.zeeying.pojiedemo.R;

public class GifMovieView extends View {

	private static final int DEFAULT_MOVIEW_DURATION = 1000;
	private int mCurrentAnimationTime = 0;
	private float mLeft;
	private int mMeasuredMovieHeight;
	private int mMeasuredMovieWidth;
	private Movie mMovie;
	private int mMovieResourceId;
	private long mMovieStart;
	private volatile boolean mPaused = false;
	private float mScale;
	private float mTop;
	private boolean mVisible = true;

	public GifMovieView(Context context) {
		this(context, null);
	}

	public GifMovieView(Context context, AttributeSet attributeSet) {
		this(context, attributeSet, 0);
	}

	public GifMovieView(Context context, AttributeSet attributeSet, int defStyle) {
		super(context, attributeSet, defStyle);
		setViewAttributes(context, attributeSet, defStyle);
	}

	private void drawMovieFrame(Canvas canvas) {
		this.mMovie.setTime(this.mCurrentAnimationTime);
		canvas.save(1);
		canvas.scale(this.mScale, this.mScale);
		this.mMovie.draw(canvas, this.mLeft / this.mScale, this.mTop / this.mScale);
		canvas.restore();
	}

	@SuppressLint({"NewApi"})
	private void invalidateView() {
		if (this.mVisible) {
			if (Build.VERSION.SDK_INT >= 16) {
				postInvalidateOnAnimation();
			} else {
				invalidate();
			}
		}
	}

	@SuppressLint({"NewApi"})
	private void setViewAttributes(Context context, AttributeSet attributeSet, int defStyle) {
		if (Build.VERSION.SDK_INT >= 11) {
			setLayerType(LAYER_TYPE_SOFTWARE, null);
		}
		TypedArray array = context.obtainStyledAttributes(
				attributeSet,
				R.styleable.GifMovieView,
				defStyle, R.style.Widget_GifMoviewView
		);
		this.mMovieResourceId = array.getResourceId(R.styleable.GifMovieView_gif, -1);
		this.mPaused = array.getBoolean(R.styleable.GifMovieView_paused, false);
		array.recycle();
		if (this.mMovieResourceId != -1) {
			this.mMovie = Movie.decodeStream(getResources().openRawResource(this.mMovieResourceId));
		}
	}

	private void updateAnimationTime() {
		long l = SystemClock.uptimeMillis();
		if (this.mMovieStart == 0L) {
			this.mMovieStart = l;
		}
		int j = this.mMovie.duration();
		int i = j;
		if (j == 0) {
			i = 1000;
		}
		this.mCurrentAnimationTime = ((int)((l - this.mMovieStart) % i));
	}

	public Movie getMovie() {
		return this.mMovie;
	}

	public boolean isPaused() {
		return this.mPaused;
	}

	protected void onDraw(Canvas canvas) {
		if (this.mMovie != null) {
			if (!this.mPaused) {
				updateAnimationTime();
				drawMovieFrame(canvas);
				invalidateView();
			} else {
				drawMovieFrame(canvas);
			}
		}
	}

	protected void onLayout(boolean changed, int l, int t, int r, int b) {
		super.onLayout(changed, l, t, r, b);
		this.mLeft = ((getWidth() - this.mMeasuredMovieWidth) / 2.0F);
		this.mTop = ((getHeight() - this.mMeasuredMovieHeight) / 2.0F);
		if (getVisibility() == VISIBLE) {
			this.mVisible = true;
		} else {
			this.mVisible = false;
		}
	}

	protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
		if (this.mMovie != null) {
			int movieWidth = this.mMovie.width();
			int movieHeight = this.mMovie.height();
			float scaleH = 1.0F;
			int measureModeWidth = MeasureSpec.getMode(widthMeasureSpec);
			if (measureModeWidth != MeasureSpec.UNSPECIFIED) {
				int maximumWidth = MeasureSpec.getSize(widthMeasureSpec);
				if (movieWidth > maximumWidth) {
					scaleH = movieHeight / maximumWidth;
				}
			}
			float scaleW = 1.0F;
			int measureModeHeight = MeasureSpec.getMode(heightMeasureSpec);
			if (measureModeHeight != MeasureSpec.UNSPECIFIED) {
				int maximumHeight = MeasureSpec.getSize(heightMeasureSpec);
				if (movieHeight > maximumHeight) {
					scaleW = movieHeight / maximumHeight;
				}
			}
			this.mScale = (1.0F / Math.max(scaleW, scaleH));
			this.mMeasuredMovieWidth = ((int)(movieWidth * this.mScale));
			this.mMeasuredMovieHeight = ((int)(movieHeight * this.mScale));
			setMeasuredDimension(this.mMeasuredMovieWidth, this.mMeasuredMovieHeight);
			return;
		}
		setMeasuredDimension(getSuggestedMinimumWidth(), getSuggestedMinimumHeight());
	}

	@SuppressLint({"NewApi"})
	public void onScreenStateChanged(int screenState) {
		super.onScreenStateChanged(screenState);
		if (screenState == SCREEN_STATE_ON) {
			this.mVisible = true;
		} else {
			this.mVisible = false;
		}
		invalidateView();
	}

	@SuppressLint({"NewApi"})
	protected void onVisibilityChanged(@NonNull View changedView, int visibility) {
		super.onVisibilityChanged(changedView, visibility);
		if (visibility == VISIBLE) {
			this.mVisible = true;
		} else {
			this.mVisible = false;
		}
		invalidateView();
	}

	protected void onWindowVisibilityChanged(int visibility)
	{
		super.onWindowVisibilityChanged(visibility);
		if (visibility == VISIBLE) {
			this.mVisible = true;
		} else {
			this.mVisible = false;
		}
		invalidateView();
	}

	public void setMovie(Movie movie) {
		this.mMovie = movie;
		requestLayout();
	}

	public void setMovieResource(int movieResId)
	{
		this.mMovieResourceId = movieResId;
		this.mMovie = Movie.decodeStream(getResources().openRawResource(this.mMovieResourceId));
		requestLayout();
	}

	public void setMovieTime(int time)
	{
		this.mCurrentAnimationTime = time;
		invalidate();
	}

	public void setPaused(boolean paused)
	{
		this.mPaused = paused;
		if (!paused) {
			this.mMovieStart = (SystemClock.uptimeMillis() - this.mCurrentAnimationTime);
		}
		invalidate();
	}
}
