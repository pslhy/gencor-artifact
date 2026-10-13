let rec next_power_of_2 (n : int) : int =
  match n with
  | 0 -> 1
  | _ ->
    let rec find_power (i : int) : int =
      if i >= n then i
      else find_power (i lsl 1)
    in find_power 1

let n = 8
let result = next_power_of_2 n
let () = Printf.printf "%d\n" result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest power of 2 greater than or equal to n. *)
