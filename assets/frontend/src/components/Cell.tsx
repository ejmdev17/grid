import React, { useState } from 'react';
import { useMutation, gql } from '@apollo/client';

const Cell = (props) => {
    const { cell } = props;
    const [toggleState] = useState({
          id: cell.id,
          toggled: cell.toggled
    });

    const [mutateFunction] = useMutation(TOGGLE_MUTATION, {variables: {id: toggleState.id}});

    const toggleCell = (id) => {
        console.log(`toggling cell with id ${id}`);
        mutateFunction()
    };

    const classNames = (cell) => {
        return 'cell ' +
            'row-' + cell.row + ' ' +
            'col-' + cell.col + ' ' +
            (cell.toggled ? ' toggled' : '');
    }

    return (
        <div
            className={classNames(cell)}
            onClick={() => toggleCell(cell.id)}>
            Cell {cell.id}
        </div>
    );
};

const TOGGLE_MUTATION = gql`
    mutation ToggleMutation(
        $id: ID!
    ) {
        toggleCell(id: $id){
            id
            toggled
        }
    }
`;

export default Cell;
