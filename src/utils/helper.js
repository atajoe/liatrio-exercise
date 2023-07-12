const unknownEndPoint = (req,res) => res.status(404).send({ error: 'Unknown Endpoint '});

const getDate = () => {
    const date = new Date();
    return date.toJSON().slice(0,10)
}


module.exports = {
    unknownEndPoint,
    getDate
}