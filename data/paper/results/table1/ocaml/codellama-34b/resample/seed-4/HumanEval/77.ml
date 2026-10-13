(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes an integer a and returns true *)
(*     if this ingeger is a cube of some integer number. *)
(*     Note: you may assume the input is always valid. *)
(*     Examples: *)
(*     >>> iscube 1 *)
(*     true *)
(*     >>> iscube 2 *)
(*     false *)
(*     >>> iscube (-1) *)
(*     true *)
(*     >>> iscube 64 *)
(*     true *)
(*     >>> iscube 0 *)
(*     true *)
(*     >>> iscube 180 *)
(*     false *)
let rec iscube (a : int) : bool = 
    let x = unit a in
    for i = 1 to (a - 1) do
        x <- x * i
        if x = a then
            false
        else
            true
    done
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:9: Syntax error: "done" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec iscube (a : int) : bool = 
    let x = ref a in
    for i = 1 to (a - 1) do
        x := !x * i
    done;
    x = a

