<?php defined('_JEXEC') or die; ?>

<div class="categories ">
	<button class="categories-button"><span class="">აირჩიე კატეგორიები</span></button>
</div>
<div class="categories-block hide" style="display: none;">

	<div class="categories-block-inner" >
			<ul>
				<?php foreach( $categories as $category ): ?>
					<li>
						<a href="<?php echo $category->alias ?>">
							<img src="<?php echo $category->img ?>" alt="<?php echo $category->img ?>" width="100" height="100">
							<div class="clear"></div>
							<span><?php   echo $category->name ?></span>
						</a>
					</li>
				<?php endforeach; ?>
			</ul>
	</div>


</div>

