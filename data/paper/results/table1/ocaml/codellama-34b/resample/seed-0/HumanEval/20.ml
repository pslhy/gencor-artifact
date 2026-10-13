(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     From a supplied list of numbers (of length at least two) select and return two that are the closest to each *)
(*     other and return them in order (smaller number, larger number). *)
(*     >>> find_closest_elements [1.0; 2.0; 3.0; 4.0; 5.0; 2.2] *)
(*     (2.0, 2.2) *)
(*     >>> find_closest_elements [1.0; 2.0; 3.0; 4.0; 5.0; 2.0] *)
(*     (2.0, 2.0) *)
let rec find_closest_elements (numbers : float list) :  float * float =
    match numbers with
    | [] -> failwith "Error: list must have at least two elements"
    | [x] -> failwith "Error: list must have at least two elements"
    | x :: y ->
        let rec find_min_diff (remaining : float list) : int =
            if remaining = [] then 0
            else 1 + find_min_diff remaining
        in
        let min_diff = find_min_diff numbers in
        let rec partition_closest (remaining : float list) (closest : float list) : float list * float list =
            match remaining with
            | [] -> (closest, [])
            | x :: y =>
                if abs (x - y) < min_diff then partition_closest remaining (x :: closest)
                else if abs (x - y) = min_diff then (closest, y :: remaining)
                else (closest, remaining)
        in
        let (closest, remaining) = partition_closest numbers [] in
        match closest with
        | [x; y] -> (x, y)
        | _ -> failwith "Error: unable to find closest elements"
>>> find_closest_elements [1.0; 2.0; 3.0; 4.0; 5.0; 2.2]
(2.0, 2.2)
>>> find_closest_elements [1.0; 2.0; 3.0; 4.0; 5.0; 2.0]
(2.0, 2.0)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:22: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_closest_elements (numbers : float list) :  float * float =
    match numbers with
    | [] -> (0.0, 0.0)
    | [x] -> (x, x)
    | x :: y ->
        let rec find_min_diff (remaining : float list) : int =
            if remaining = [] then 0
            else 1 + find_min_diff remaining
        in
        let min_diff = find_min_diff numbers in
        let rec partition_closest (remaining : float list) (closest : float list) : float list * float list =
            match remaining with
            | [] -> (closest, [])
            | x :: y :: rest ->
                if abs (x - y) < min_diff then partition_closest rest (x :: closest)
                else if abs (x - y) = min_diff then (closest, y :: rest)
                else (closest, remaining)
        in
        let (closest, remaining) = partition_closest numbers [] in
        match closest with
        | [x; y] -> (x, y)
        | _ -> failwith "Error: unable to find closest elements"
;;

let () =
    let numbers = [1.0; 2.0; 3.0; 4.0; 5.0; 2.2] in
    let (a, b) = find_closest_elements numbers in
    Printf.printf "%.1f, %.1f" a b
;;

