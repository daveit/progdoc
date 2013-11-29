class DocumentsController < InheritedResources::Base

  def new
    @document = Document.new
  end

  def create
    # @product = product.find(params[:product_id])
    @document = Document.create(secure_params)
    if @document.valid?
    #if @document.save
      flash[:success] = "New Document Saved"
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def secure_params
    params.require(:document).permit(:product_id, :deldoc, :lotnum, :custord, :docdate, :salesorder, :docname)
  end

end
