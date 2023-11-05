import './SearchBar.css'

const SearchBar = () => {
    return (
      <div class="container" style={{width: "900px"}}>
            <div class="row height d-flex justify-content-center align-items-center">
              <div class="col-md-6" style={{width: "100%"}}>
                <div class="form">
                  <i class="fa fa-search"></i>
                  <input type="text" class="form-control form-input" placeholder="Search top rated movies!" />
                </div>
              </div>             
            </div>           
          </div>
    )
  }
  
  export default SearchBar