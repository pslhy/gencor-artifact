(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cube given its side length. *)
let rec lateralsurface_cube (l : int) : int = 
    (* Get all the sides in pixels *)
    List.map (fun x -> x * x * 6) [Complex.rect 1 0; Complex.rect 0 1; Complex.rect 1 1];;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:36: Unbound value "Complex.rect" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lateralsurface_cube (l : int) : int = 
    (* Get the length of the cube *)
    let length = l in
    (* Use the Pythagorean theorem to find the lateral surface area *)
    let lateral_area = Math.sqrt (Math.pow length 2 + Math.pow length 2) in
    (* Return the lateral surface area *)
    lateral_area ;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:24: Unbound module "Math" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lateralsurface_cube (l : int) : int = 
    (* Get the length of the cube *)
    let length = l in
    (* Use the Pythagorean theorem to find the lateral surface area *)
    let lateral_area = 
        let x = (length) *. (length) in 
        let y = (length) *. (length) in 
        let z = (length) *. (length) in 
        Math.sqrt (x * x + y * y + z * z) in
    (* Return the lateral surface area *)
    lateral_area ;;

