class CheatsController < ApplicationController
  # GET /cheats
  # GET /cheats.xml
  def index
    @cheats = Cheat.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cheats }
    end
  end

  # GET /cheats/1
  # GET /cheats/1.xml
  def show
    @cheat = Cheat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cheat }
    end
  end

  # GET /cheats/new
  # GET /cheats/new.xml
  def new
    @cheat = Cheat.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cheat }
    end
  end

  # GET /cheats/1/edit
  def edit
    @cheat = Cheat.find(params[:id])
  end

  # POST /cheats
  # POST /cheats.xml
  def create
    @cheat = Cheat.new(params[:cheat])

    respond_to do |format|
      if @cheat.save
        format.html { redirect_to(@cheat, :notice => 'Cheat was successfully created.') }
        format.xml  { render :xml => @cheat, :status => :created, :location => @cheat }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cheat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cheats/1
  # PUT /cheats/1.xml
  def update
    @cheat = Cheat.find(params[:id])

    respond_to do |format|
      if @cheat.update_attributes(params[:cheat])
        format.html { redirect_to(@cheat, :notice => 'Cheat was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cheat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cheats/1
  # DELETE /cheats/1.xml
  def destroy
    @cheat = Cheat.find(params[:id])
    @cheat.destroy

    respond_to do |format|
      format.html { redirect_to(cheats_url) }
      format.xml  { head :ok }
    end
  end
end
