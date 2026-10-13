(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cone given radius r and the height h. *)
let rec lateralsurface_cone (r : int) (h : int) : float =
    if h <= r
    then failwith "Base is bigger than the height"
    else if h = 0 then 0
    else 2.0
)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lateralsurface_cone (r : int) (h : int) : float =
    if h <= r
    then failwith "Base is bigger than the height"
    else ()
    let pi = 3.14
    let radius = r +. h
    let theta = 2.0 *. pi *. radius /. h
    radius *. theta

