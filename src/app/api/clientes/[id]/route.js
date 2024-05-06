export async function GET(request, {params}) {
    return new Response(`Id de la pipol ${params.id}`)
    ;
  }