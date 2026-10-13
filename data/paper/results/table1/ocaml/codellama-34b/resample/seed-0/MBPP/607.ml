(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
    if text = "" || patter = "" then
        ("", -1, -1)
    else
        let finish_match (text : string) (pattern : string) (start : int) (stop : int) : string * int * int =
            (String.sub text start (stop - start + 1), start, stop)
        in
        let rec loop (text : string) (pattern : string) (start : int) : string * int * int =
            match text with
            | [] -> finish_match text "" start (stop - 1)
            | _ ->
                match pattern with
                | [] -> finish_match text "" start (stop - 1)
                | _ ->
                    if text.[start] = pattern.[0] then
                        loop text pattern (start + 1)
                    else
                        loop text pattern start
        in
        loop text pattern 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:21: Unbound value "patter" *)
(*     Hint: Did you mean "pattern"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
    if text = "" || pattern = "" then
        ("", -1, -1)
    else
        let finish_match (text : string) (pattern : string) (start : int) (stop : int) : string * int * int =
            (String.sub text start (stop - start + 1), start, stop)
        in
        let rec loop (text : string) (pattern : string) (start : int) : string * int * int =
            match text with
            | [] -> finish_match text pattern start (stop - 1)
            | _ ->
                match pattern with
                | [] -> finish_match text pattern start (stop - 1)
                | _ ->
                    if text.[start] = pattern.[0] then
                        loop text pattern (start + 1)
                    else
                        loop text pattern start
        in
        loop text pattern 0

