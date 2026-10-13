let rec find_length (string : string) : int =
match String.length string with
| 0 -> 0
| _ ->
    let num_zeros : int = String.count string ~f:(fun c -> c = '0') in
    let num_ones : int = String.count string ~f:(fun c -> c = '1') in
    max (num_ones - num_zeros) (num_zeros - num_ones)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
