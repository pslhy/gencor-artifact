(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a string representing a space separated lowercase letters, return an association list *)
(*     of the letter with the most repetition and containing the corresponding count. *)
(*     If several letters have the same occurrence, return all of them. *)
(*     Example: *)
(*     >>> histogram "a b c" *)
(*     [("a", 1); ("b", 1); ("c", 1)] *)
(*     >>> histogram "a b b a" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "a b c a b" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "b b b b a" *)
(*     [("b", 4)] *)
(*     >>> histogram "" *)
(*     [] *)
let rec histogram (test : string) : (string * int) list =
match String.split_on_char ' ' test with
| [] -> []
| [x] -> []
| x :: xs -> let (letter, rest) = x, xs in
let (head, tail) = histogram rest in
match head with
| [] -> [(letter, 1)] @ tail
| (letter', count) :: t -> if letter = letter' then (letter, count + 1) :: t else (letter, 1) :: head
in
let l = List.map (fun x -> (fst x, (snd x) - 1)) in
List.sort (fun (_, x) (_, y) -> compare y x) l
| _ -> []
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec histogram (test : string) : (string * int) list =
    let letters = List.map (fun x ->
        if (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z') then (x, 1) else ("", 0)) (String.to_list test)
    let counted = List.fold_left (fun acc x ->
        match acc with
        | (letter, count) :: t -> if letter = x then (letter, count + 1) :: t else (letter, 0) :: x :: t
        | _ -> failwith "Syntax error"
    ) [] letters
    List.sort (fun (_, x) (_, y) -> compare y x) letters
in
let test_string = histogram "whatever" in
;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec histogram (test : string) : (string * int) list =
    let letters = List.map (fun x ->
        if (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z') then (x, 1) else ("", 0)) (String.to_list test)
    let counted = List.fold_left (fun acc x ->
        match acc with
        | (letter, count) :: t -> if letter = x then (letter, count + 1) :: t else (letter, 0) :: x :: t
        | _ -> []
    ) [] letters
in
let test_string = histogram "whatever" in
;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec histogram (test : string) : (string * int) list =
    let letters = List.map (fun x ->
        if (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z') then (x, 1) else ("", 0)) (String.to_list test)
    let counted = List.fold_left (fun (acc, x ->
        match acc with
        | (letter, count) :: t -> if letter = x then (letter, count + 1) :: t else (letter, 0) :: x :: t
        | _ -> []
    ) [] letters
in
let test_string = histogram "whatever" in
;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec histogram (test : string) : (string * int) list =
    let letters = List.map (fun x ->
        if (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z') then (x, 1) else ("", 0)) (String.to_list test)
    let counted = List.fold_left (fun acc x ->
        match acc with
        | (letter, count) :: t -> if letter = x then (letter, count + 1) :: t else (letter, 0) :: x :: t
        | _ -> []
    ) [] letters
in
let test_string = histogram "whatever" in
;;

