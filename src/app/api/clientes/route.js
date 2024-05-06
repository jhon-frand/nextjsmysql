import { personas } from "../data";

export async function GET() {
  return Response.json(personas);
}

export async function POST(request) {
  const {nombre, apellidos} = await request.json();
  const new_persona = {nombre, apellidos};
  personas.push(new_persona);
  console.log(new_persona);
  return Response.json("Registro de cliente");
}