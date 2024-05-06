import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

export async function GET(request, { params }) {
  try {
    const id = Number(params.id);
    const respuesta = await prisma.productos.findUnique({
      where: { id: id },
    });
    return new Response(JSON.stringify(respuesta), {
      headers: { "Content-Type": "application/json" },
      status: 200,
    });
  } catch (error) {
    console.log(error);
  }
}

export async function DELETE(request, { params }) {
    try {
      const id = Number(params.id);
      const newProduct = await prisma.productos.delete({
        where: {id: id}
      });
      return new Response(JSON.stringify({message: "eliminación exitososa", newProduct}), {
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

  export async function PUT(request, {params}) {
    try {
        const id = Number(params.id);
      const producto = await request.json();
      const newProduct = await prisma.productos.update({
        where: {id: id},
        data: producto
      });
      return new Response(JSON.stringify({message: "actualizado con éxito", newProduct}), {
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
