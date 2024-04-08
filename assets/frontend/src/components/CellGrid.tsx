import React from 'react';
import Cell from './Cell';
import { useQuery, gql } from '@apollo/client';

const CellGrid = () => {
    const { loading, error, data } = useQuery(CELL_QUERY);

    if (loading) return <p>Loading...</p>;
    if (error) return <p>Error : {error.message}</p>;

    return (
        <div className={"grid-container"}>
            {data.allCells.map((cell) => (
                <Cell key={cell.id} cell={cell} />
            ))}
        </div>
    );
};

const CELL_QUERY = gql`
    query allCells{
        allCells {
            id
            row
            col
            toggled
        }
    }
`

export default CellGrid;