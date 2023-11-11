import { Button, FormGroup } from '@mui/material';
import './SearchBar.css'
import TextField from '@mui/material/TextField';
import { Link, useNavigate } from 'react-router-dom';
import { useState } from 'react';


const SearchBar = () => {

    const [textField, setTextField] = useState("")
    const navigate = useNavigate()

    const onFormSubmit = (e) => {
      e.preventDefault()
      navigate(`/browse/title=${textField}`)
    }

    return (
      <div className='search-container'>
        <form>
          <TextField
            onChange={text => {
              setTextField(text.target.value)}
            }
            onSubmit={onFormSubmit}
            label="Search for top rated movies!"
            id='fullWidth'
            style={{width: "800px"}}
            fieldset
            variant='filled'>
          </TextField>
            <Link to={`/browse/title=${textField}`} >
              <Button
              type='submit'
              style={{width: "100px", height: "100%", 
              background: "rgb(3, 37, 65)",
              color: "white"}}
              variant='contained' 
              disableElevation>Search
              </Button>
            </Link>
          </form>
      </div>
    )
  }
  
  export default SearchBar