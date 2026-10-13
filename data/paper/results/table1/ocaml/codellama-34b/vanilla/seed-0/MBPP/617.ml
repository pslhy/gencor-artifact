let rec min_Jumps (steps :  int * int) (d : int) : float =
    if (abs(snd steps) = d) && (fst steps > 0) then
        if (fst steps) mod 2 = 1
        then  float_of_int ((fst steps) - d)
        else  float_of_int (fst steps - (d / 2) + 1)
    else  Float.infinity

let rec minJumps (steps : int * int) (d : int) : float list =
    min_Jumps (steps) (d), (minJumps (steps)) (d)
    
let rec minJumps' (steps : int * int) (d : int) : float list =
    min_Jumps (steps) (d), ( minJumps' (fst steps - (d / 2) + 1) (d))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane. *)
