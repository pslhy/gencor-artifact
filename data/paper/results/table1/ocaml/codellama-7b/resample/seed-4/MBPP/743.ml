(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
let rec rotate_right (list : int list) (m : int) : int list = 
    match (list, m) with
    | [], 0 -> []
    | [], _ -> raise (Failure "Invalid input") (* TypeError in OCaml *)
    | list, 1 -> list
    | list, n ->
        let ll = ref list in
        for i = 1 to n - 1 do
            ll := take_last !ll
        done;
        take_last !ll

and take_last list = match list with
| [] -> []
| [x] -> []
| _ :: rest -> list_append (take_last rest) [x] ;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:16: Unbound value "list_append" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rotate_right (list : int list) (m : int) : int list =
    if m = 0 then list else
    let n = List.length list in
    let i = (m + n - 1) mod n in
    let prefix = List.take list i in
    let suffix = List.drop list i in
    list_append prefix suffix;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:18: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rotate_right (list : int list) (m : int) : int list =
  if m = 0 then list else
  let n = List.length list in
  let i = (m + n - 1) mod n in
  let prefix = List.take list i in
  let suffix = List.drop list i in
  List.append prefix suffix;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:16: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rotate_right (list : int list) (m : int) : int list =
  if m = 0 then list else
  let n = List.length list in
  let i = (m + n - 1) mod n in
  let prefix = List.take list i in
  let suffix = List.drop list i in
  List.append prefix suffix;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:16: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rotate_right (list : int list) (m : int) : int list =
  if m = 0 then list else
  let n = List.length list in
  let i = (m + n - 1) mod n in
  let prefix = List.hd list in
  let suffix = List.tl list in
  let new_list = prefix :: suffix in
  List.append (rotate_right new_list (m - 1)) list

let rec rotate_left (list : int list) (n : int) : int list =
  match n with
  | 0 -> list
  | _ -> rotate_right list (n - 1)

