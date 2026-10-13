
let rec find_adverb_position (text : string) :  int * int * string = 
    let text = text.
    (try 
        let i = String.index text.[ignore] in 
        ()
    with Not_found -> 
        failwith "not found"
        ());
    match text with 
    | [] -> [];
    | _ :: text -> 
        let index = List.find_index (fun (s : string) -> 
            (try 
                let i = string_of_int text.[ignore] in 
                ()
            with Not_found -> 
                failwith "not found"
                ());
        ()) in 
        index;
    | _ :: _ :: text -> 
        let index = List.find_index (fun (s : string) -> 
            (try 
                let i = string_of_int text.[ignore] in 
                ()
            with Not_found -> 
                failwith "not found"
                ());
        ()) in 
        index;
    | _ :: _ ::  _ :: text -> 
        let index = List.find_index (fun (s : string) -> 
            (try 
                let i = string_of_int text.[ignore] in 
                ()
            with Not_found -> 
                failwith "not found"
                ());
        ()) in 
        index;
    | _ :: _ :: _ :: _ :: text -> 
        let index = List.find_index (fun (s : string) -> 
            (try 
                let i = string_of_int text.[ignore] in 
                ()
            with Not_found -> 
                failwith "not found"
                ());
        ()) in 
        index;
    | _ :: _ :: _ :: _ :: _ :: text -> 
        let index = List.find_index (fun (s : string) -> 
            (try 
                let i = string_of_int text.[ignore] in 
                ()
            with Not_found -> 
                failwith "not found"
                ());
        ()) in 
        index;
    | _ :: _ :: _ :: _ :: _ :: _ :: text -> 
        let index = List.find_index (fun (s : string) -> 
            (try 
                let i = string_of_int text.[ignore] in 
                ()
            with Not_found -> 
                failwith "not found"
                ());
        ()) in 
        index;
    | _ :: _ :: _ :: _ :: _ :: _ :: _ :: text -> 
        let index = List.find_index (fun (s : string) -> 
            (try 
                let i = string_of_int text.[ignore] in 
                ()
            with Not_found -> 
                failwith "not found"
                ());
        ()) in 
        index;
    | _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: text -> 
        let index = List.find_index (fun (s : string) -> 
            (try 
                let i = string_of_int text.[ignore] in 
                ()
            with Not_found -> 
                failwith "not found"
                ());
        ()) in 
        index;
    | _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: _:: text -> 
        let index = List.find_index (fun (s : string) -> 
            (try 
                let i = string_of_int text.[ignore] in 
                ()
            with Not_found -> 
                failwith "not found"
                ());
        ()) in 
        index;
    | _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: text -> 
        let index = List.find_index (fun (s : string) -> 
            (try 
                let i = string_of_int text.[ignore] in 
                ()
            with Not_found -> 
                failwith "not found"
                ());
        ()) in 
        index;
    | _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: text -> 
        let index = List.find_index (fun (s : string) -> 
            (try 
                let i = string_of_int text.[ignore] in 
                ()
            with Not_found -> 
                failwith "not found"
                ());
        ()) in 
        index;
    | _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: text -> 
        let index = List.find_index (fun (s : string) -> 
            (try 
                let i = string_of_int text.[ignore] in 
                ()
            with Not_found -> 
                failwith "not found"
                ());
        ()) in 
        index;
    | _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ :: text -> 
        let index = List.find_index (fun (s : string) -> 
            (try 
                let i = string_of_int text.[ignore] in 
                ()
            with Not_found -> 
                failwith "not found"
                ());
        ()) in 
        index;
    | _ :: _ :: _ :: _ :: _ :: _ :: _ :: _ ::

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
