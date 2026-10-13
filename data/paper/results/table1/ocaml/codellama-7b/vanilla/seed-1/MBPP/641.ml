let rec is_nonagonal (n : int) : int =
  let rec aux (acc : int) (x : int) : bool =
    if x > n then false
    else if x = n then true
    else aux (acc + x) (x + 1)
  in
  aux 0 1

let rec find_nonagonal (n : int) : int =
  let rec aux (acc : int) (x : int) : int =
    if is_nonagonal x then x
    else aux (acc + x) (x + 1)
  in
  aux 0 1

let nth_nonagonal (n : int) : int =
  let res = ref 0 in
  for i = 1 to n do
    res := !res + (find_nonagonal i)
  done;
  !res


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth nonagonal number. *)
