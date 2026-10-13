
let rec bell_number (n : int) : int = match n with
  | 0 -> 1
  | _ -> List.fold_left (+) 0 (List.map (fun k -> bell_number k * bell_number (n - k - 1)) (List.init n (fun x -> x)))

let partition_ways (n : int) : int =
  let rec helper k = function
    | 0 -> 1
    | m when m < k -> 0
    | _ -> helper (k + 1) modf n
  and modf n k = n mod k
  in
  helper 1 n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
