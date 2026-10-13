(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort each sublist of strings in a given list of lists. *)
let rec sort_sublists (input_list : string list list) : string list list =
    (* Define a function to sort a single string list. *)
    let sort_strings (strings : string list) : string list =
        strings |> List.sort ~cmp:String.compare in

    (* Apply the sort_strings function to each sublist in the given input list. *)
    List.map ~f:sort_strings input_list

let () =
    (* Test the sort_sublists function with an example input. *)
    let example_input : string list list =
        [
            ["hello"; "world"; "ocaml"];
            ["brown"; "fox"; "jumps"];
            ["over"; "lazy"; "dog"]
        ] in

    let sorted_sublists : string list list = sort_sublists example_input in
    (* Print the sorted sublists. *)
    List.iter ~f:(fun list -> print_endline (List.fold list ~init:"" ~f:(fun acc e -> acc ^ e ^ " "))) sorted_sublists

