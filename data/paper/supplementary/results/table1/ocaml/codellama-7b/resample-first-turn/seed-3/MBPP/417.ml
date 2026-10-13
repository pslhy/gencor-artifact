let rec group_tuples (input : string list list) : string list list =
  match input with
  | [] -> []
  | [x] -> [x]
  | x :: y :: xs ->
    if x.[0] <> y.[0] then x :: group_tuples (y :: xs)
    else group_tuples (xs)

let common_first_element (input : string list list) : string option =
  match group_tuples input with
  | [] -> None
  | _ :: tuples ->
    let first_tuple = List.hd tuples
    let () = List.iter (fun t -> assert (t = first_tuple)) tuples
    Some first_tuple

let test_cases = [
  ["aa"; "ab"; "ac"], "a";
  ["aa"; "ac"], "a";
  ["aa"; "ab"]; "a";
  ["aa"; "aa"]; "aa";
  ["ac"; "aa"], "a"
]

let () =
  List.iter (fun (input, expected) ->
    let actual = common_first_element input |> Option.get
    Printf.printf "input = %s; expected = %s; actual = %s\n"
      (String.concat "; " input) expected actual
  ) test_cases


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
