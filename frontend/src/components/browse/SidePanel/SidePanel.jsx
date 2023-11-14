import * as React from 'react';
import Drawer from '@mui/material/Drawer';
import List from '@mui/material/List';
import Divider from '@mui/material/Divider';
import ListItem from '@mui/material/ListItem';
import ListItemButton from '@mui/material/ListItemButton';
import ListItemText from '@mui/material/ListItemText';
import GenreSelect from './GenreSelect/GenreSelect';

const drawerWidth = 300;

export default function SidePanel({ handleFilterChange }) {
  return (
      <Drawer
        sx={{
          width: drawerWidth,
          flexShrink: 0,
          '& .MuiDrawer-paper': {
            width: drawerWidth,
            boxSizing: 'border-box',
          },
        }}
        variant="permanent"
        anchor="left"
      >
        <List style={{marginTop: "48px"}}>
        <ListItem key={"TODO"} disablePadding>
              <ListItemButton>
                <ListItemText primary={"TODO"} />
              </ListItemButton>
            </ListItem>
        </List>
        <Divider />
        <List>
          <ListItem key="genre">
            <GenreSelect handleFilterChange={(key,value) => handleFilterChange(key, value)}/>
          </ListItem>
        </List>
      </Drawer>
  );
}
