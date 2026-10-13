let rec surfacearea_cube (l : int) : int =
    let area (l : int) : int =
        l * l
    in
    let sides_areas : int =
        (area l) * 6
    in
    sides_areas
    
;;

(* Test cases *)
surfacearea_cube 0 ;; 0
surfacearea_cube 1 ;; 12
surfacearea_cube 3 ;; 54


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cube of a given size. *)
