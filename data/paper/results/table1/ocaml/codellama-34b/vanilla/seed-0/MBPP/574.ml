let rec surfacearea_cylinder (r : int) (h : int) : float =
    if h <= r
    then failwith "Base is bigger than the height"
    else if r < 0 || h < 0
    then failwith "Both radius and height must be non-negative"
    else
        let topbottomarea = (float_of_int r) *. (float_of_int r) *. Float.pi +. ((float_of_int h) *. 2. *. (float_of_int r) *. Float.pi) +. (float_of_int r) *. (float_of_int h)
        in topbottomarea /. 1.


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cylinder. *)
