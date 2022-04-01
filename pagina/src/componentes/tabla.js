import Card from "react-bootstrap/card";
import Button from 'react-bootstrap/Button';
import Container from 'react-bootstrap/Container';
import Table from "react-bootstrap/Table"
import Col from 'react-bootstrap/Col';
import Row from 'react-bootstrap/Row';



function Tabla() {
  return (

    <Container>
  <Row>
    <Col>
    <Table striped bordered hover>
  <thead>
    <tr>
      <th>#</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Username</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <td>2</td>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <td>3</td>
      <td colSpan={2}>Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</Table>
    </Col>
  </Row>
</Container>

    

    
  
);
}

export default Tabla;