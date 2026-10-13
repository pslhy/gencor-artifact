let rec parabola_directrix (a : int) (b : int) (c : int) : int = 
    (* Solve the quadratic equation with the parabola's defining equation *)
    let x = solve_quadratic_equation (a * x * x) + (b * x) + c in
    let y = a * x * x + b * x + c in 
    (* Return the x-coordinate of the parabola's directrix, which is the x-intercept of the tangent line *)
    x

and solve_quadratic_equation a x y =
    (* Solve the quadratic equation ax^2 + bx + c = 0 using the quadratic formula *)
    x = (-b + sqrt(b^2 - 4 * a * c)) / (2 * a)

in

parabola_directrix


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the directrix of a parabola. *)
