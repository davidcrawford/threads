class OutfitPairsController < ApplicationController
  # GET /outfit_pairs
  # GET /outfit_pairs.xml
  def index
    @outfit_pairs = OutfitPair.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @outfit_pairs }
    end
  end

  # GET /outfit_pairs/1
  # GET /outfit_pairs/1.xml
  def show
    @outfit_pair = OutfitPair.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @outfit_pair }
    end
  end

  # GET /outfit_pairs/new
  # GET /outfit_pairs/new.xml
  def new
    @outfit_pair = OutfitPair.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @outfit_pair }
    end
  end

  # GET /outfit_pairs/1/edit
  def edit
    @outfit_pair = OutfitPair.find(params[:id])
  end

  # POST /outfit_pairs
  # POST /outfit_pairs.xml
  def create
    @outfit_pair = OutfitPair.new(params[:outfit_pair])

    respond_to do |format|
      if @outfit_pair.save
        format.html { redirect_to(@outfit_pair, :notice => 'OutfitPair was successfully created.') }
        format.xml  { render :xml => @outfit_pair, :status => :created, :location => @outfit_pair }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @outfit_pair.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /outfit_pairs/1
  # PUT /outfit_pairs/1.xml
  def update
    @outfit_pair = OutfitPair.find(params[:id])

    respond_to do |format|
      if @outfit_pair.update_attributes(params[:outfit_pair])
        format.html { redirect_to(@outfit_pair, :notice => 'OutfitPair was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @outfit_pair.errors, :status => :unprocessable_entity }
      end
    end
  end

  # POST /outfit_pairs/vote
  # POST /outfit_pairs/vote.xml
  def vote
    @outfit_pair = OutfitPair.find(params[:id])
    first = params[:vote_first]
    puts params[:id]
    if (first)
       @outfit_pair.first_votes = @outfit_pair.first_votes + 1
    else
       @outfit_pair.second_votes = @outfit_pair.second_votes + 1
    end

      if @outfit_pair.save
        redirect_to(@outfit_pair)
      else
        render :action => "edit"
      end

  end

  # DELETE /outfit_pairs/1
  # DELETE /outfit_pairs/1.xml
  def destroy
    @outfit_pair = OutfitPair.find(params[:id])
    @outfit_pair.destroy

    respond_to do |format|
      format.html { redirect_to(outfit_pairs_url) }
      format.xml  { head :ok }
    end
  end
  
  def random
    pairs = OutfitPair.all
    @outfit_pair = pairs[rand(pairs.length)]
    render :action => 'show'
  end
end
