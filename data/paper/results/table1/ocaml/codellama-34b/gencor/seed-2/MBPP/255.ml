
let rec combinations_colors (l : string list) (n : int) : string list list =
    match l with
    | [] -> []
    | _ ->
        let elem = List.hd l
        combinations_colors (List.tl l) (n - 1)
        |> List.map (fun x -> [])
        |> List.flatten
        |> List.concat [l; []]
    |> List.filter (fun x -> List.length x = n)
    |> List.map (fun x -> List.concat [l; x])
    |> List.flatten
    |> List.remove_assoc []
    |> List.map (fun x -> [l; x])
    |> List.filter (fun x -> List.length x = n)
    |> List.map (fun x -> List.concat [l; x])
    |> List.flatten
    |> List.remove_assoc []
    |> List.map (fun x -> [l; x])
    |> List.filter (fun x -> List.length x = n)
    |> List.map (fun x -> List.concat [l; x])
    |> List.flatten
    |> List.remove_assoc []
    |> List.map (fun x -> [l; x])
    |> List.filter (fun x -> List.length x = n)
    |> List.map (fun x -> List.concat [l; x])
    |> List.flatten
    |> List.remove_assoc []
    |> List.map (fun x -> [l; x])
    |> List.filter (fun x -> List.length x = n)
    |> List.map (fun x -> List.concat [l; x])
    |> List.flatten
    |> List.remove_assoc []
    |> List.map (fun x -> [l; x])
    |> List.filter (fun x -> List.length x = n)
    |> List.map (fun x -> List.concat [l; x])
    |> List.flatten
    |> List.remove_assoc []
    |> List.map (fun x -> [l; x])
    |> List.filter (fun x -> List.length x = n)
    |> List.map (fun x -> List.concat [l; x])
    |> List.flatten
    |> List.remove_assoc []
    |> List.map (fun x -> [l; x])
    |> List.filter (fun x -> List.length x = n)
    |> List.map (fun x -> List.concat [l; x])
    |> List.flatten
    |> List.remove_assoc []
    |> List.map (fun x -> [l; x])
    |> List.filter (fun x -> List.length x = n)
    |> List.map (fun x -> List.concat [l; x])
    |> List.flatten
    |> List.remove_assoc []
    |> List.map (fun x -> [l; x])
    |> List.filter (fun x -> List.length x = n)
    |> List.map (fun x -> List.concat [l; x])
    |> List.flatten
    |> List.remove_assoc []
    |> List.map (fun x -> [l; x])
    |> List.filter (fun x -> List.length x = n)
    |> List.map (fun x -> List.concat [l; x])
    |> List.flatten
    |> List.remove_assoc []
    |> List.map (fun x -> [l; x])
    |> List.filter (fun x -> List.length x = n)
    |> List.map (fun x -> List.concat [l; x])
    |> List.flatten
    |> List.remove_assoc []
    |> List.map (fun x -> [l; x])
    |> List.filter (fun x -> List.length x = n)
    |> List.map (fun x -> List.concat [l; x])
    |> List.flatten
    |> List.remove_assoc []
    |> List.map (fun x -> [l; x])
    |> List.filter (fun x -> List.length x = n)
    |> List.map (fun x -> List.concat [l; x])
    |> List.flatten
    |> List.remove_assoc []
    |> List.map (fun x -> [l; x])
    |> List.filter (fun x -> List.length x = n)
    |> List.map (fun x -> List.concat [l; x])
    |> List.flatten
    |> List.remove_assoc []
    |> List.map (fun x -> [l; x])
    |> List.filter (fun x -> List.length x = n)
   

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and length n, and generates all combinations (with repetition) of the elements of the list and returns a list with a list for each combination. *)
