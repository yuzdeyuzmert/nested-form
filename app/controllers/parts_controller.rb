class PartsController < ApplicationController
  
  before_filter :get_product

  def index
    @parts = @product.parts

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @part = @product.parts.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @part }
    end
  end

  def new
    @part = @product.parts.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @part }
    end
  end

  # GET /products/1/edit
  def edit
    @part = @product.parts.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @part = @product.parts.new(params[:part])

    respond_to do |format|
      if @part.save
        format.html { redirect_to [@product,@part], notice: 'Part was successfully created.' }
        format.json { render json: [@product,@part], status: :created, location: [@product,@part] }
      else
        format.html { render action: "new" }
        format.json { render json: @part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @part = @product.parts.find(params[:id])

    respond_to do |format|
      if @part.update_attributes(params[:part])
        format.html { redirect_to [@product,@part], notice: 'Part was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @part = @product.parts.find(params[:id])
    @part.destroy

    respond_to do |format|
      format.html { redirect_to product_parts_url }
      format.json { head :no_content }
    end
  end

  def get_product
    @product = Product.find(params[:product_id])
  end
end
