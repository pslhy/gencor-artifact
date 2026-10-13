let rec unique_digits (x : int list) : int list =
  match x with
  | [] -> []
  | h :: t ->
    if h mod 2 = 0 then
      unique_digits t
    else
      h :: unique_digits t

let rec remove_even (xs : int list) : int list =
  match xs with
  | [] -> []
  | h :: t ->
    if h mod 2 = 0 then
      remove_even t
    else
      h :: remove_even t

let unique_digits_sorted (x : int list) : int list =
  unique_digits x |> remove_even |> List.sort compare

let () =
  let input = [15; 33; 1422; 1] in
  Printf.printf "input: %d\n" input;
  let result = unique_digits_sorted input in
  Printf.printf "result: %d\n" result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of positive integers x. return a sorted list of all *)
(*     elements that hasn't any even digit. *)
(*     Note: Returned list should be sorted in increasing order. *)
(*     For example: *)
(*     >>> unique_digits [15; 33; 1422; 1] *)
(*     [1; 15; 33] *)
(*     >>> unique_digits [152; 323; 1422; 10] *)
(*     [] *)
