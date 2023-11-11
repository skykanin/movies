import { Button, FormGroup } from '@mui/material';
import './SearchBar.css'
import TextField from '@mui/material/TextField';
import { Link } from 'react-router-dom';
import { useState } from 'react';


const SearchBar = () => {

    const [textField, setTextField] = useState("")

    return (
      <div className='search-container'>
        <FormGroup row>
          <TextField
            onChange={text => {
              setTextField(text.target.value)}
            }
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
            <Link to={`/browse/title=${textField}`} >
              <Button
              style={{width: "100px", height: "100%", 
              background: "rgb(3, 37, 65)",
              color: "white"}}
              variant='contained' 
              disableElevation>Search
              </Button>
            </Link>
        </FormGroup>
      </div>
    )
  }
  
  export default SearchBar