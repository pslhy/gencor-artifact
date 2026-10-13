(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given list of numbers (of at least two elements), apply a linear transform to that list, *)
(*     such that the smallest number will become 0 and the largest will become 1 *)
(*     >>> rescale_to_unit [1.0; 2.0; 3.0; 4.0; 5.0] *)
(*     [0.0; 0.25; 0.5; 0.75; 1.0] *)
let rec rescale_to_unit (numbers : float list) : float list =
  match numbers with
  | [] -> []
  | _ ->
    let min = List.min numbers
    let max = List.max numbers
    let range = max - min
    let offset = min
    let rec loop (numbers : float list) (scaled : float list) =
      match numbers with
      | [] -> scaled
      | x :: xs ->
        let x' = (x - offset) / range
        loop xs (x' :: scaled)
    in
    loop numbers []

let () =
  Printf.printf "%.2f,%.2f,%.2f,%.2f,%.2f\n"
    (rescale_to_unit [ 1.0; 2.0; 3.0; 4.0; 5.0 ]) ;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rescale_to_unit (numbers : float list) : float list =
    let min = List.min numbers in
    let max = List.max numbers in
    let range = max - min in
    let offset = min in
    let rec loop (numbers : float list) (scaled : float list) =
        match numbers with
        | [] -> scaled
        | x :: xs ->
            let x' = (x - offset) / range
            loop xs (x' :: scaled)
    in
    loop numbers []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rescale_to_unit (numbers : float list) : float list =
  let min = List.min numbers in
  let range = max - min in
  let offset = min in
  let rec loop (numbers : float list) (scaled : float list) =
    match numbers with
    | [] -> scaled
    | x :: xs ->
      let x' = (x - offset) / range
      loop xs (x' :: scaled)
  in
  loop numbers []

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rescale_to_unit (numbers : float list) : float list =
    let min = List.min numbers in
    let range = max - min in
    let offset = min in
    let rec loop (numbers : float list) (scaled : float list) =
        match numbers with
        | [] -> scaled
        | x :: xs ->
            let x' = (x - offset) / range
            loop xs (x' :: scaleed)
    in
    loop numbers []

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rescale_to_unit (numbers : float list) : float list =
  let min = List.min numbers in
  let range = max - min in
  let offset = min in
  let rec loop (numbers : float list) (scaled : float list) =
    match numbers with
    | [] -> scaled
    | x :: xs ->
        let x' = (x - offset) / range
        loop xs (x' :: scaled)
  in
  loop numbers []

