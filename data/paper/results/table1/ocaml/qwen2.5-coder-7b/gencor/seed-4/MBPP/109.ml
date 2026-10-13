
let rec odd_Equivalent (s : string) (n : int) : int = 
  let rotate_string s k = 
    let len = String.length s in
    String.sub s (len - k) k ^ String.sub s 0 (len - k)
  in
  let rec count_odd s i acc =
    if i = 0 then acc
    else let rotated = rotate_string s i in
         let contains_odd = 
           String.exists (fun c -> c = '1') rotated
         in count_odd s (i - 1) (if contains_odd then acc + 1 else acc)
  in
  if n = 0 then count_odd s (String.length s) 0 else
  let rotated = rotate_string s n in
  if String.exists (fun c -> c = '1') rotated then 1 + (count_odd s (String.length s - 1) 0) else count_odd s (String.length s - 1) 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
