(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Find how many times a given substring can be found in the original string. Count overlaping cases. *)
(*     >>> how_many_times "" "a" *)
(*     0 *)
(*     >>> how_many_times "aaa" "a" *)
(*     3 *)
(*     >>> how_many_times "aaaa" "aa" *)
(*     3 *)
let rec how_many_times (string : string) (substring : string) : int =
  if String.length string < String.length substring then
    0
  else if String.equal (String.sub string 0 (String.length substring)) substring then
    1 + how_many_times (String.sub string (String.length substring) (String.length string - String.length substring)) substring
  else
    0
;;

let () =
  if String.length string < String.length substring then
    ()
  else if String.equal (String.sub string 0 (String.length substring)) substring then
    Printf.printf "%d\n" (1 + how_many_times (String.sub string (String.length substring) (String.length string - String.length substring)) substring)
  else
    ()
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:20: Unbound value "string" *)
(*     Hint: Did you mean "stdin"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec how_many_times (string : string) (substring : string) : int =
  if String.length string < String.length substring then
    0
  else if String.equal (String.sub string 0 (String.length substring)) substring then
    1 + how_many_times (String.sub string (String.length substring) (String.length string - String.length substring)) substring
  else
    0

let () =
  let string = get_string () in
  let substring = get_string () in
  let count = how_many_times string substring in
  Printf.printf "%d\n" count

let get_string () =
  let line = String.trim (React.Sys.read_line ()) in
  if String.length line = 0 then get_string () else line

let main () =
  let string = get_string () in
  let substring = get_string () in
  let count = how_many_times string substring in
  Printf.printf "%d\n" count

let () = main ()

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:16: Unbound value "get_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec how_many_times (string : string) (substring : string) : int =
  if String.length string < String.length substring then
    0
  else if String.equal (String.sub string 0 (String.length substring)) substring then
    1 + how_many_times (String.sub string (String.length substring) (String.length string - String.length substring)) substring
  else
    0

let () =
  let string = get_string () in
  let substring = get_string () in
  let count = how_many_times string substring in
  Printf.printf "%d\n" count

let get_string () =
  let line = String.trim (React.Sys.read_line ()) in
  if String.length line = 0 then get_string () else line

let main () =
  let string = get_string () in
  let substring = get_string () in
  let count = how_many_times string substring in
  Printf.printf "%d\n" count

let () = main ()

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:16: Unbound value "get_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec how_many_times (string : string) (substring : string) : int =
  if String.length string < String.length substring then
    0
  else if String.equal (String.sub string 0 (String.length substring)) substring then
    1 + how_many_times (String.sub string (String.length substring) (String.length string - String.length substring)) substring
  else
    0

let get_string () =
  let line = React.Sys.read_line () in
  if String.length line = 0 then get_string () else line

let () = main ()

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:14: Unbound module "React" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec how_many_times (string : string) (substring : string) : int =
  if String.length string < String.length substring then
    0
  else if String.equal (String.sub string 0 (String.length substring)) substring then
    1 + how_many_times (String.sub string (String.length substring) (String.length string - String.length substring)) substring
  else
    0

let get_string () =
  let line = stdin.get_line () in
  if String.length line = 0 then get_string () else line

let () = main ()

