let rec parabola_directrix (a : int) (b : int) (c : int) : int = 
    (*
     * Find the directrix of a parabola given by the equation y = ax^2 + bx + c.
     * The directrix is the line that passes through the vertex of the parabola and is perpendicular to the axis of symmetry.
     * 
     * By solving the equation y = ax^2 + bx + c for x, we can find the x-coordinate of the vertex.
     * Once we have the x-coordinate of the vertex, we can find the y-coordinate by substituting it into the equation.
     * The directrix is then given by the equation y = -ax + k, where k is a constant that we can find by using the y-coordinate of the vertex and the slope of the directrix.
     * 
     * The function returns the slope of the directrix.
     *)
    let x_vertex = (-b / (2 * a)) in
    let y_vertex = a * x_vertex * x_vertex + b * x_vertex + c in
    let k = y_vertex / (-a * x_vertex) in
    k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the directrix of a parabola. *)
