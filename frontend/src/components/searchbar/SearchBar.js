import { Button, FormGroup } from '@mui/material';
import './SearchBar.css'
import TextField from '@mui/material/TextField';


const SearchBar = () => {
    return (
      <div className='search-container'>
        <FormGroup row>
          <TextField
            label="Search for top rated movies!"
            id='fullWidth'
            style={{width: "800px"}}
            inputProps={{
              style: {
                color: "white",
              }
            }}
            InputLabelProps={{
              style: {
                color: "white"
              }
            }}
            fieldset>
          </TextField>
          <Button style={{width: "100px", 
          background: "rgb(3, 37, 65)",
          color: "white"}}
          variant='contained' 
          disableElevation>Search</Button>
        </FormGroup>
      </div>
    )
  }
  
  export default SearchBar