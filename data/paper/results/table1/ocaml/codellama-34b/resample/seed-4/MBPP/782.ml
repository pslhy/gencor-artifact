(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
let rec odd_length_sum (arr : int list) : int = 
    (* base case: empty list with length 0 *)
    let rec loop (i : int) (acc : int) : int = 
        if i >= arr.length then acc 
        else 
            loop (i+1) (acc + i)
    loop 0 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_length_sum (arr : int list) : int =
  let rec loop (i : int) (acc : int) : int =
    if i >= arr.length then acc 
    else loop (i+1) (acc + arr.(i))
  loop 0 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_length_sum (arr : int list) : int =
  let rec loop (i : int) (acc : int) : int =
    if i >= arr.length then acc
    else loop (i+1) (acc + arr.(i))

let () =
  let arr = [|1; 2; 3; 4; 5|] in
  let result = loop 0 0 in
  Printf.printf "The sum of the odd-length sublists of %s is %d\n"
    (Array.to_string arr) result

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_length_sum (arr : int list) : int =
  let rec loop (i : int) (acc : int) : int =
    match arr with
    | [] -> acc
    | h :: t ->
        if i mod 2 = 0 then loop (i+1) (acc + h)
        else loop (i+1) acc
  in
  loop 0 0

