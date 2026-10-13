(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
let rec group_tuples (input : string list list) : string list list =
  match input with
  | [] -> []
  | hd :: tl ->
    let (first, rest) = List.split_at (List.length hd) input in
    (first, rest) :: group_tuples rest

let find_common_first (input : string list list) : string list =
  let grouped = group_tuples (List.sort Stdlib.compare input) in
  let rec find_first (grouped : string list list list) : string list =
    match grouped with
    | [] -> []
    | hd :: tl ->
      let (first, rest) = List.split_at (List.length hd) grouped in
      if first = [] then find_first rest
      else List.map (fun x -> x.(0)) first
  in
  find_first grouped

let () =
  let input = [["a"; "b"; "c"]; ["b"; "c"; "d"]; ["c"; "d"; "e"]; ["d"; "e"; "f"]] in
  Printf.printf "Common first elements: %s\n" (String.concat "; " (find_common_first input))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:25: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec group_tuples (input : string list list) : string list list =
  match input with
  | [] -> []
  | hd :: tl ->
    let (first, rest) = List.split_at (List.length hd) input in
    (first, rest) :: group_tuples rest

let find_common_first (input : string list list) : string list =
  let grouped = group_tuples (List.sort Stdlib.compare input) in
  let rec find_first (grouped : (string list list) * (string list list)) : string list =
    match grouped with
    | (first, rest) ->
      if first = [] then find_first (split grouped)
      else List.map (fun x -> x.(0)) first
  in
  find_first grouped

let () =
  let input = [["a"; "b"; "c"]; ["b"; "c"; "d"]; ["c"; "d"; "e"]; ["d"; "e"; "f"]] in
  Printf.printf "Common first elements: %s\n" (String.concat "; " (find_common_first input))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:25: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec group_tuples (input : string list list) : string list list =
  match input with
  | [] -> []
  | hd :: tl ->
    let (first, rest) = List.split (List.length hd) input in
    (first, rest) :: group_tuples rest

let find_common_first (input : string list list) : string list =
  let grouped = group_tuples (List.sort Stdlib.compare input) in
  let rec find_first (grouped : string list list list) : string list =
    match grouped with
    | (first, rest) ->
      if first = [] then find_first (List.split grouped)
      else List.map (fun x -> x.(0)) first
  in
  find_first grouped

let () =
  let input = [["a"; "b"; "c"]; ["b"; "c"; "d"]; ["c"; "d"; "e"]; ["d"; "e"; "f"]] in
  Printf.printf "Common first elements: %s\n" (String.concat "; " (find_common_first input))

