
let rec get_ludic (n : int) : int list =
  match n with
  | 1 -> [1]
  | _ ->
    let lucas = get_ludic (n - 1) in
    let h = List.hd lucas in
    let t = List.tl lucas in
    h :: h :: List.map (fun x -> x * h) t

let ludic_numbers (n : int) : int list =
  List.filter (fun x -> x <= n) (get_ludic n)

let main =
  let n = read_int () in
  ludic_numbers n
  |> List.iter print_int
  |> print_newline

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
