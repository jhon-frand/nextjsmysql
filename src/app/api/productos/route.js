import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

export async function GET() {
    const respuesta = await prisma.productos.findMany()
    return new Response(JSON.stringify(respuesta),
    {
        headers: { 'Content-Type': 'application/json'}, 
        status: 200
    }
)
}

export async function POST(request) {
    try {
      const producto = await request.json();
      const newProduct = await prisma.productos.create({
        data: producto
      });
      return new Response(JSON.stringify({message: "registro exitoso", newProduct}), {
        headers: { "Content-Type": "application/json" },
        status: 200,
      });
    } catch (error) {
      return new Response(JSON.stringify({message: error}), {
          headers: { "Content-Type": "application/json" },
          status: 500
        });
    }
  }
